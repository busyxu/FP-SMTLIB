(declare-fun c_ack!551 () (_ BitVec 64))
(declare-fun b_ack!550 () (_ BitVec 64))
(declare-fun a_ack!552 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!550))
       (fp.abs ((_ to_fp 11 53) c_ack!551))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!552))
            (fp.abs ((_ to_fp 11 53) b_ack!550)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!550))
       (fp.abs ((_ to_fp 11 53) c_ack!551))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!550))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!551))
          (fp.abs ((_ to_fp 11 53) b_ack!550)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!551))
          (fp.abs ((_ to_fp 11 53) b_ack!550)))))

(check-sat)
(exit)
