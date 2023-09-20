(declare-fun a_ack!745 () (_ BitVec 64))
(declare-fun b_ack!744 () (_ BitVec 64))
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!744) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!744)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!744)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!745))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!744)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!745))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc024000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745))))))
  (not (fp.gt ((_ to_fp 11 53) b_ack!744) a!1))))
(assert (bvslt #x00000001
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745))))
(assert (bvslt #x00000002
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745))))
(assert (bvslt #x00000003
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745))))
(assert (bvslt #x00000004
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745))))
(assert (bvslt #x00000005
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745))))
(assert (bvslt #x00000006
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745))))
(assert (bvslt #x00000007
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745))))
(assert (bvslt #x00000008
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745))))
(assert (bvslt #x00000009
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745))))
(assert (bvslt #x0000000a
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745))))

(check-sat)
(exit)
