(declare-fun x1_ack!51 () (_ BitVec 64))
(declare-fun x0_ack!55 () (_ BitVec 64))
(declare-fun x2_ack!52 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!53 () (_ BitVec 64))
(declare-fun y1_ack!54 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!55) ((_ to_fp 11 53) x1_ack!51)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!51) ((_ to_fp 11 53) x2_ack!52)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!51)
                       ((_ to_fp 11 53) x0_ack!55))
               ((_ to_fp 11 53) x0_ack!55))
       ((_ to_fp 11 53) x1_ack!51)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!51)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!51)
                       ((_ to_fp 11 53) x0_ack!55)))
       ((_ to_fp 11 53) x0_ack!55)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!52)
                       ((_ to_fp 11 53) x1_ack!51))
               ((_ to_fp 11 53) x1_ack!51))
       ((_ to_fp 11 53) x2_ack!52)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!52)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!52)
                       ((_ to_fp 11 53) x1_ack!51)))
       ((_ to_fp 11 53) x1_ack!51)))
(assert (FPCHECK_FSUB_UNDERFLOW y1_ack!54 y0_ack!53))

(check-sat)
(exit)
