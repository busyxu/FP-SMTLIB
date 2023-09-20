(declare-fun x1_ack!35 () (_ BitVec 64))
(declare-fun x0_ack!37 () (_ BitVec 64))
(declare-fun x2_ack!36 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!37) ((_ to_fp 11 53) x1_ack!35)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!35) ((_ to_fp 11 53) x2_ack!36)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!35)
                       ((_ to_fp 11 53) x0_ack!37))
               ((_ to_fp 11 53) x0_ack!37))
       ((_ to_fp 11 53) x1_ack!35)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!35)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!35)
                       ((_ to_fp 11 53) x0_ack!37)))
       ((_ to_fp 11 53) x0_ack!37)))
(assert (FPCHECK_FSUB_ACCURACY x2_ack!36 x1_ack!35))

(check-sat)
(exit)
