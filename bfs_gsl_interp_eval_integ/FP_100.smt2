(declare-fun x1_ack!5483 () (_ BitVec 64))
(declare-fun x0_ack!5487 () (_ BitVec 64))
(declare-fun x2_ack!5484 () (_ BitVec 64))
(declare-fun b_ack!5486 () (_ BitVec 64))
(declare-fun a_ack!5485 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5487) ((_ to_fp 11 53) x1_ack!5483)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5483) ((_ to_fp 11 53) x2_ack!5484)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5483)
                       ((_ to_fp 11 53) x0_ack!5487))
               ((_ to_fp 11 53) x0_ack!5487))
       ((_ to_fp 11 53) x1_ack!5483)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5483)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5483)
                       ((_ to_fp 11 53) x0_ack!5487)))
       ((_ to_fp 11 53) x0_ack!5487)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5484)
                       ((_ to_fp 11 53) x1_ack!5483))
               ((_ to_fp 11 53) x1_ack!5483))
       ((_ to_fp 11 53) x2_ack!5484)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5484)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5484)
                       ((_ to_fp 11 53) x1_ack!5483)))
       ((_ to_fp 11 53) x1_ack!5483)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5483)
                    ((_ to_fp 11 53) x0_ack!5487))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5484)
                    ((_ to_fp 11 53) x1_ack!5483))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5485) ((_ to_fp 11 53) b_ack!5486))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5485) ((_ to_fp 11 53) x0_ack!5487))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5486) ((_ to_fp 11 53) x2_ack!5484))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5485) ((_ to_fp 11 53) b_ack!5486))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5485) ((_ to_fp 11 53) x0_ack!5487))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5485) ((_ to_fp 11 53) x1_ack!5483))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5486) ((_ to_fp 11 53) x0_ack!5487))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5486) ((_ to_fp 11 53) x1_ack!5483)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5483) ((_ to_fp 11 53) b_ack!5486))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5483)
                    ((_ to_fp 11 53) x0_ack!5487))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
