(declare-fun x1_ack!79 () (_ BitVec 64))
(declare-fun x0_ack!83 () (_ BitVec 64))
(declare-fun x2_ack!80 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!81 () (_ BitVec 64))
(declare-fun y2_ack!82 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!83) ((_ to_fp 11 53) x1_ack!79)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!79) ((_ to_fp 11 53) x2_ack!80)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!79)
                       ((_ to_fp 11 53) x0_ack!83))
               ((_ to_fp 11 53) x0_ack!83))
       ((_ to_fp 11 53) x1_ack!79)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!79)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!79)
                       ((_ to_fp 11 53) x0_ack!83)))
       ((_ to_fp 11 53) x0_ack!83)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!80)
                       ((_ to_fp 11 53) x1_ack!79))
               ((_ to_fp 11 53) x1_ack!79))
       ((_ to_fp 11 53) x2_ack!80)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!80)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!80)
                       ((_ to_fp 11 53) x1_ack!79)))
       ((_ to_fp 11 53) x1_ack!79)))
(assert (FPCHECK_FSUB_UNDERFLOW y2_ack!82 y1_ack!81))

(check-sat)
(exit)
