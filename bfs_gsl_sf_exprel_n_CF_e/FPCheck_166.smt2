(declare-fun a_ack!593 () (_ BitVec 64))
(declare-fun b_ack!592 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!593))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!592) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!593))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!592)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!593)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!593)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!593)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!592)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!593))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!592)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!593))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc024000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!593))))))
  (not (fp.gt ((_ to_fp 11 53) b_ack!592) a!1))))
(assert (bvslt #x00000001
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!593))))
(assert (bvslt #x00000002
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!593))))
(assert (bvslt #x00000003
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!593))))
(assert (bvslt #x00000004
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!593))))
(assert (bvslt #x00000005
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!593))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!593)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffe
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!593)))))
      (a!5 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffd
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!593)))))
      (a!7 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffc
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!593)))))
      (a!9 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffb
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!593))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!592)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!592)))
                   (fp.div roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) b_ack!592)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven a!2 a!4)
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) b_ack!592)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) b_ack!592)))
                   (fp.div roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) b_ack!592)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven a!6 a!8)
    (fp.mul roundNearestTiesToEven
            a!8
            (fp.div roundNearestTiesToEven a!9 ((_ to_fp 11 53) b_ack!592))))))))

(check-sat)
(exit)
