(declare-fun mu_ack!28 () (_ BitVec 64))
(declare-fun x_ack!29 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!28) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!29)
                    ((_ to_fp 11 53) x_ack!29))
            ((_ to_fp 11 53) mu_ack!28))))
(assert (FPCHECK_FDIV_ACCURACY
  mu_ack!28
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!29)
          ((_ to_fp 11 53) x_ack!29))))

(check-sat)
(exit)
