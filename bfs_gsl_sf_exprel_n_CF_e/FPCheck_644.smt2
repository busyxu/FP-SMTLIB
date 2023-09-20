(declare-fun a_ack!2061 () (_ BitVec 64))
(declare-fun b_ack!2060 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2060) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2061))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!2060)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!2060)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!2061))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!2060)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!2061))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc024000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!2061))))))
  (not (fp.gt ((_ to_fp 11 53) b_ack!2060) a!1))))
(assert (bvslt #x00000001
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000002
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000003
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000004
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000005
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000006
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000007
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000008
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000009
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000000a
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000000b
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000000c
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000000d
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000000e
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000000f
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000010
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000011
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000012
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000013
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000014
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000015
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000016
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000017
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000018
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000019
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000001a
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000001b
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000001c
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000001d
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000001e
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000001f
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000020
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000021
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000022
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000023
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000024
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000025
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000026
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000027
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000028
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000029
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000002a
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000002b
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000002c
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000002d
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000002e
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x0000002f
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000030
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (bvslt #x00000031
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!2061))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffcf
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!2061))))))
  (FPCHECK_FDIV_ZERO a!1 b_ack!2060)))

(check-sat)
(exit)
