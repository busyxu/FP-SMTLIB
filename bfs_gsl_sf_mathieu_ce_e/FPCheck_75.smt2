(declare-fun n_ack!355 () (_ BitVec 32))
(declare-fun a_ack!356 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (= #x00000000 (bvsrem n_ack!355 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!356) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!355 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!355 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!356) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!355 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!356) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!355 #x00000000)))
(assert (= #x00000000 n_ack!355))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!356) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!355)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!355))))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4014000000000000)
                    (fp.mul roundNearestTiesToEven a!1 a!1))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4041000000000000)
                    a!1))
    #x4022000000000000)))

(check-sat)
(exit)
