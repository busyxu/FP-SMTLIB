(declare-fun x1_ack!697 () (_ BitVec 64))
(declare-fun x0_ack!701 () (_ BitVec 64))
(declare-fun x2_ack!698 () (_ BitVec 64))
(declare-fun b_ack!700 () (_ BitVec 64))
(declare-fun a_ack!699 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!701) ((_ to_fp 11 53) x1_ack!697)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!697) ((_ to_fp 11 53) x2_ack!698)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!697)
                       ((_ to_fp 11 53) x0_ack!701))
               ((_ to_fp 11 53) x0_ack!701))
       ((_ to_fp 11 53) x1_ack!697)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!697)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!697)
                       ((_ to_fp 11 53) x0_ack!701)))
       ((_ to_fp 11 53) x0_ack!701)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!698)
                       ((_ to_fp 11 53) x1_ack!697))
               ((_ to_fp 11 53) x1_ack!697))
       ((_ to_fp 11 53) x2_ack!698)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!698)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!698)
                       ((_ to_fp 11 53) x1_ack!697)))
       ((_ to_fp 11 53) x1_ack!697)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!697)
                    ((_ to_fp 11 53) x0_ack!701))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!698)
                    ((_ to_fp 11 53) x1_ack!697))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!699) ((_ to_fp 11 53) b_ack!700))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!699) ((_ to_fp 11 53) x0_ack!701))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!700) ((_ to_fp 11 53) x2_ack!698))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!699) ((_ to_fp 11 53) b_ack!700))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!699) ((_ to_fp 11 53) x0_ack!701))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!699) ((_ to_fp 11 53) x1_ack!697))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!700) ((_ to_fp 11 53) x0_ack!701))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!700) ((_ to_fp 11 53) x1_ack!697)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!697) ((_ to_fp 11 53) b_ack!700))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!697)
                    ((_ to_fp 11 53) x0_ack!701))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
