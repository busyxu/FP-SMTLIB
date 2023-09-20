(declare-fun x1_ack!5010 () (_ BitVec 64))
(declare-fun x0_ack!5016 () (_ BitVec 64))
(declare-fun x2_ack!5011 () (_ BitVec 64))
(declare-fun b_ack!5015 () (_ BitVec 64))
(declare-fun a_ack!5014 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!5012 () (_ BitVec 64))
(declare-fun y1_ack!5013 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5016) ((_ to_fp 11 53) x1_ack!5010)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5010) ((_ to_fp 11 53) x2_ack!5011)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5010)
                       ((_ to_fp 11 53) x0_ack!5016))
               ((_ to_fp 11 53) x0_ack!5016))
       ((_ to_fp 11 53) x1_ack!5010)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5010)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5010)
                       ((_ to_fp 11 53) x0_ack!5016)))
       ((_ to_fp 11 53) x0_ack!5016)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5011)
                       ((_ to_fp 11 53) x1_ack!5010))
               ((_ to_fp 11 53) x1_ack!5010))
       ((_ to_fp 11 53) x2_ack!5011)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5011)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5011)
                       ((_ to_fp 11 53) x1_ack!5010)))
       ((_ to_fp 11 53) x1_ack!5010)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5010)
                    ((_ to_fp 11 53) x0_ack!5016))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5011)
                    ((_ to_fp 11 53) x1_ack!5010))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5014) ((_ to_fp 11 53) b_ack!5015))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5014) ((_ to_fp 11 53) x0_ack!5016))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5015) ((_ to_fp 11 53) x2_ack!5011))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5014) ((_ to_fp 11 53) b_ack!5015))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5014) ((_ to_fp 11 53) x0_ack!5016))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5014) ((_ to_fp 11 53) x1_ack!5010))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5015) ((_ to_fp 11 53) x0_ack!5016))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5015) ((_ to_fp 11 53) x1_ack!5010)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5010) ((_ to_fp 11 53) b_ack!5015))))
(assert (FPCHECK_FSUB_OVERFLOW y1_ack!5013 y0_ack!5012))

(check-sat)
(exit)
