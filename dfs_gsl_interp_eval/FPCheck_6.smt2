(declare-fun x1_ack!41 () (_ BitVec 64))
(declare-fun x0_ack!45 () (_ BitVec 64))
(declare-fun x2_ack!42 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!43 () (_ BitVec 64))
(declare-fun y1_ack!44 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!45) ((_ to_fp 11 53) x1_ack!41)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!41) ((_ to_fp 11 53) x2_ack!42)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!41)
                       ((_ to_fp 11 53) x0_ack!45))
               ((_ to_fp 11 53) x0_ack!45))
       ((_ to_fp 11 53) x1_ack!41)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!41)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!41)
                       ((_ to_fp 11 53) x0_ack!45)))
       ((_ to_fp 11 53) x0_ack!45)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!42)
                       ((_ to_fp 11 53) x1_ack!41))
               ((_ to_fp 11 53) x1_ack!41))
       ((_ to_fp 11 53) x2_ack!42)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!42)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!42)
                       ((_ to_fp 11 53) x1_ack!41)))
       ((_ to_fp 11 53) x1_ack!41)))
(assert (FPCHECK_FSUB_OVERFLOW y1_ack!44 y0_ack!43))

(check-sat)
(exit)
