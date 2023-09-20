(declare-fun n_ack!131 () (_ BitVec 32))
(declare-fun x_ack!132 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt n_ack!131 #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!132) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 (bvand (bvsub #x00000000 n_ack!131) #x00000001)))
(assert (let ((a!1 (= #x00000000
              (concat #b0 ((_ extract 31 1) (bvsub #x00000000 n_ack!131))))))
  (not a!1)))
(assert (let ((a!1 (bvand (concat #b0 ((_ extract 31 1) (bvsub #x00000000 n_ack!131)))
                  #x00000001)))
  (= #x00000000 a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x_ack!132))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x_ack!132)))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!1)))

(check-sat)
(exit)
