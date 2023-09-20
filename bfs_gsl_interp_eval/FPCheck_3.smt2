(declare-fun x1_ack!23 () (_ BitVec 64))
(declare-fun x0_ack!25 () (_ BitVec 64))
(declare-fun x2_ack!24 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!25) ((_ to_fp 11 53) x1_ack!23)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!23) ((_ to_fp 11 53) x2_ack!24)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!23)
                       ((_ to_fp 11 53) x0_ack!25))
               ((_ to_fp 11 53) x0_ack!25))
       ((_ to_fp 11 53) x1_ack!23)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!23)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!23)
                       ((_ to_fp 11 53) x0_ack!25)))
       ((_ to_fp 11 53) x0_ack!25)))
(assert (FPCHECK_FSUB_OVERFLOW x2_ack!24 x1_ack!23))

(check-sat)
(exit)
