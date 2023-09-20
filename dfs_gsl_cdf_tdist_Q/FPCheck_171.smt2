(declare-fun mu_ack!615 () (_ BitVec 64))
(declare-fun x_ack!616 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!615) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!616)
                    ((_ to_fp 11 53) x_ack!616))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!615)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!616)
                    ((_ to_fp 11 53) x_ack!616))
            ((_ to_fp 11 53) mu_ack!615))))
(assert (FPCHECK_FMUL_OVERFLOW x_ack!616 x_ack!616))

(check-sat)
(exit)
