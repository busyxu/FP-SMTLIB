(declare-fun x1_ack!5438 () (_ BitVec 64))
(declare-fun x0_ack!5442 () (_ BitVec 64))
(declare-fun x2_ack!5439 () (_ BitVec 64))
(declare-fun b_ack!5441 () (_ BitVec 64))
(declare-fun a_ack!5440 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5442) ((_ to_fp 11 53) x1_ack!5438)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5438) ((_ to_fp 11 53) x2_ack!5439)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5438)
                       ((_ to_fp 11 53) x0_ack!5442))
               ((_ to_fp 11 53) x0_ack!5442))
       ((_ to_fp 11 53) x1_ack!5438)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5438)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5438)
                       ((_ to_fp 11 53) x0_ack!5442)))
       ((_ to_fp 11 53) x0_ack!5442)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5439)
                       ((_ to_fp 11 53) x1_ack!5438))
               ((_ to_fp 11 53) x1_ack!5438))
       ((_ to_fp 11 53) x2_ack!5439)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5439)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5439)
                       ((_ to_fp 11 53) x1_ack!5438)))
       ((_ to_fp 11 53) x1_ack!5438)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5438)
                    ((_ to_fp 11 53) x0_ack!5442))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5439)
                    ((_ to_fp 11 53) x1_ack!5438))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5440) ((_ to_fp 11 53) b_ack!5441))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5440) ((_ to_fp 11 53) x0_ack!5442))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5441) ((_ to_fp 11 53) x2_ack!5439))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5440) ((_ to_fp 11 53) b_ack!5441))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5440) ((_ to_fp 11 53) x0_ack!5442))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5440) ((_ to_fp 11 53) x1_ack!5438))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5441) ((_ to_fp 11 53) x0_ack!5442))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5441) ((_ to_fp 11 53) x1_ack!5438)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5438) ((_ to_fp 11 53) b_ack!5441))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5438)
                    ((_ to_fp 11 53) x0_ack!5442))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
