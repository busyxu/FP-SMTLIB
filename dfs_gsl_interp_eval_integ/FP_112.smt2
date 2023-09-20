(declare-fun x1_ack!6705 () (_ BitVec 64))
(declare-fun x0_ack!6709 () (_ BitVec 64))
(declare-fun x2_ack!6706 () (_ BitVec 64))
(declare-fun b_ack!6708 () (_ BitVec 64))
(declare-fun a_ack!6707 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6709) ((_ to_fp 11 53) x1_ack!6705)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6705) ((_ to_fp 11 53) x2_ack!6706)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6705)
                       ((_ to_fp 11 53) x0_ack!6709))
               ((_ to_fp 11 53) x0_ack!6709))
       ((_ to_fp 11 53) x1_ack!6705)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6705)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6705)
                       ((_ to_fp 11 53) x0_ack!6709)))
       ((_ to_fp 11 53) x0_ack!6709)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6706)
                       ((_ to_fp 11 53) x1_ack!6705))
               ((_ to_fp 11 53) x1_ack!6705))
       ((_ to_fp 11 53) x2_ack!6706)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6706)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6706)
                       ((_ to_fp 11 53) x1_ack!6705)))
       ((_ to_fp 11 53) x1_ack!6705)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6705)
                    ((_ to_fp 11 53) x0_ack!6709))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6706)
                    ((_ to_fp 11 53) x1_ack!6705))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6707) ((_ to_fp 11 53) b_ack!6708))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6707) ((_ to_fp 11 53) x0_ack!6709))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6708) ((_ to_fp 11 53) x2_ack!6706))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6707) ((_ to_fp 11 53) b_ack!6708))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6707) ((_ to_fp 11 53) x0_ack!6709))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6707) ((_ to_fp 11 53) x1_ack!6705)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6705) ((_ to_fp 11 53) a_ack!6707))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6708) ((_ to_fp 11 53) x1_ack!6705))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6708) ((_ to_fp 11 53) x2_ack!6706))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6706)
                    ((_ to_fp 11 53) x1_ack!6705))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
