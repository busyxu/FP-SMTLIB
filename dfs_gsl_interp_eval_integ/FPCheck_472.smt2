(declare-fun x1_ack!5868 () (_ BitVec 64))
(declare-fun x0_ack!5874 () (_ BitVec 64))
(declare-fun x2_ack!5869 () (_ BitVec 64))
(declare-fun b_ack!5873 () (_ BitVec 64))
(declare-fun a_ack!5872 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!5870 () (_ BitVec 64))
(declare-fun y2_ack!5871 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5874) ((_ to_fp 11 53) x1_ack!5868)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5868) ((_ to_fp 11 53) x2_ack!5869)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5868)
                       ((_ to_fp 11 53) x0_ack!5874))
               ((_ to_fp 11 53) x0_ack!5874))
       ((_ to_fp 11 53) x1_ack!5868)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5868)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5868)
                       ((_ to_fp 11 53) x0_ack!5874)))
       ((_ to_fp 11 53) x0_ack!5874)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5869)
                       ((_ to_fp 11 53) x1_ack!5868))
               ((_ to_fp 11 53) x1_ack!5868))
       ((_ to_fp 11 53) x2_ack!5869)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5869)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5869)
                       ((_ to_fp 11 53) x1_ack!5868)))
       ((_ to_fp 11 53) x1_ack!5868)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5868)
                    ((_ to_fp 11 53) x0_ack!5874))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5869)
                    ((_ to_fp 11 53) x1_ack!5868))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5872) ((_ to_fp 11 53) b_ack!5873))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5872) ((_ to_fp 11 53) x0_ack!5874))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5873) ((_ to_fp 11 53) x2_ack!5869))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5872) ((_ to_fp 11 53) b_ack!5873))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5872) ((_ to_fp 11 53) x0_ack!5874))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5872) ((_ to_fp 11 53) x1_ack!5868)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5868) ((_ to_fp 11 53) a_ack!5872))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5873) ((_ to_fp 11 53) x1_ack!5868))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!5873) ((_ to_fp 11 53) x2_ack!5869))))
(assert (FPCHECK_FSUB_UNDERFLOW y2_ack!5871 y1_ack!5870))

(check-sat)
(exit)
