(declare-fun n_ack!117 () (_ BitVec 32))
(declare-fun a_ack!118 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!117 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!118) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!117 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!118) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!117 #x00000000)))
(assert (= #x00000000 n_ack!117))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!118) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!117)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!117)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!117))))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    ((_ to_fp 11 53) a_ack!118))
            a!1)
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fc0000000000000)
            (fp.add roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x3ff0000000000000))))))

(check-sat)
(exit)
