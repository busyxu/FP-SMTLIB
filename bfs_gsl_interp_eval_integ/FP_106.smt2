(declare-fun x1_ack!5864 () (_ BitVec 64))
(declare-fun x0_ack!5868 () (_ BitVec 64))
(declare-fun x2_ack!5865 () (_ BitVec 64))
(declare-fun b_ack!5867 () (_ BitVec 64))
(declare-fun a_ack!5866 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5868) ((_ to_fp 11 53) x1_ack!5864)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5864) ((_ to_fp 11 53) x2_ack!5865)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5864)
                       ((_ to_fp 11 53) x0_ack!5868))
               ((_ to_fp 11 53) x0_ack!5868))
       ((_ to_fp 11 53) x1_ack!5864)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5864)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5864)
                       ((_ to_fp 11 53) x0_ack!5868)))
       ((_ to_fp 11 53) x0_ack!5868)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5865)
                       ((_ to_fp 11 53) x1_ack!5864))
               ((_ to_fp 11 53) x1_ack!5864))
       ((_ to_fp 11 53) x2_ack!5865)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5865)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5865)
                       ((_ to_fp 11 53) x1_ack!5864)))
       ((_ to_fp 11 53) x1_ack!5864)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5864)
                    ((_ to_fp 11 53) x0_ack!5868))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5865)
                    ((_ to_fp 11 53) x1_ack!5864))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5866) ((_ to_fp 11 53) b_ack!5867))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5866) ((_ to_fp 11 53) x0_ack!5868))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5867) ((_ to_fp 11 53) x2_ack!5865))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5866) ((_ to_fp 11 53) b_ack!5867))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5866) ((_ to_fp 11 53) x0_ack!5868))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5866) ((_ to_fp 11 53) x1_ack!5864))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5867) ((_ to_fp 11 53) x0_ack!5868))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5867) ((_ to_fp 11 53) x1_ack!5864)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5864) ((_ to_fp 11 53) b_ack!5867))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5864)
                    ((_ to_fp 11 53) x0_ack!5868))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
