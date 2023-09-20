(declare-fun n_ack!111 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun x_ack!112 () (_ BitVec 64))
(assert (not (bvslt n_ack!111 #x00000000)))
(assert (= #x00000000 (bvand n_ack!111 #x00000001)))
(assert (not (= #x00000000 (concat #b0 ((_ extract 31 1) n_ack!111)))))
(assert (let ((a!1 (= #x00000000
              (bvand (concat #b0 ((_ extract 31 1) n_ack!111)) #x00000001))))
  (not a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!112)
          ((_ to_fp 11 53) x_ack!112))))

(check-sat)
(exit)
