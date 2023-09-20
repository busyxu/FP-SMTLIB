(declare-fun x1_ack!6793 () (_ BitVec 64))
(declare-fun x0_ack!6797 () (_ BitVec 64))
(declare-fun x2_ack!6794 () (_ BitVec 64))
(declare-fun b_ack!6796 () (_ BitVec 64))
(declare-fun a_ack!6795 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6797) ((_ to_fp 11 53) x1_ack!6793)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6793) ((_ to_fp 11 53) x2_ack!6794)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6793)
                       ((_ to_fp 11 53) x0_ack!6797))
               ((_ to_fp 11 53) x0_ack!6797))
       ((_ to_fp 11 53) x1_ack!6793)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6793)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6793)
                       ((_ to_fp 11 53) x0_ack!6797)))
       ((_ to_fp 11 53) x0_ack!6797)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6794)
                       ((_ to_fp 11 53) x1_ack!6793))
               ((_ to_fp 11 53) x1_ack!6793))
       ((_ to_fp 11 53) x2_ack!6794)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6794)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6794)
                       ((_ to_fp 11 53) x1_ack!6793)))
       ((_ to_fp 11 53) x1_ack!6793)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6793)
                    ((_ to_fp 11 53) x0_ack!6797))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6794)
                    ((_ to_fp 11 53) x1_ack!6793))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6795) ((_ to_fp 11 53) b_ack!6796))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6795) ((_ to_fp 11 53) x0_ack!6797))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6796) ((_ to_fp 11 53) x2_ack!6794))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6795) ((_ to_fp 11 53) b_ack!6796))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6795) ((_ to_fp 11 53) x0_ack!6797))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6795) ((_ to_fp 11 53) x1_ack!6793))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6796) ((_ to_fp 11 53) x0_ack!6797))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6796) ((_ to_fp 11 53) x1_ack!6793)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6793) ((_ to_fp 11 53) b_ack!6796))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6793)
                    ((_ to_fp 11 53) x0_ack!6797))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6794)
                    ((_ to_fp 11 53) x1_ack!6793))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
