(declare-fun n_ack!74 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun x_ack!75 () (_ BitVec 64))
(assert (not (bvslt n_ack!74 #x00000000)))
(assert (not (= #x00000000 (bvand n_ack!74 #x00000001))))
(assert (not (= #x00000000 (concat #b0 ((_ extract 31 1) n_ack!74)))))
(assert (let ((a!1 (= #x00000000
              (bvand (concat #b0 ((_ extract 31 1) n_ack!74)) #x00000001))))
  (not a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!75)
          ((_ to_fp 11 53) x_ack!75))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!75)
          ((_ to_fp 11 53) x_ack!75))))

(check-sat)
(exit)
