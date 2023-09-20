(declare-fun x1_ack!7132 () (_ BitVec 64))
(declare-fun x0_ack!7136 () (_ BitVec 64))
(declare-fun x2_ack!7133 () (_ BitVec 64))
(declare-fun b_ack!7135 () (_ BitVec 64))
(declare-fun a_ack!7134 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7136) ((_ to_fp 11 53) x1_ack!7132)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7132) ((_ to_fp 11 53) x2_ack!7133)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7132)
                       ((_ to_fp 11 53) x0_ack!7136))
               ((_ to_fp 11 53) x0_ack!7136))
       ((_ to_fp 11 53) x1_ack!7132)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7132)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7132)
                       ((_ to_fp 11 53) x0_ack!7136)))
       ((_ to_fp 11 53) x0_ack!7136)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7133)
                       ((_ to_fp 11 53) x1_ack!7132))
               ((_ to_fp 11 53) x1_ack!7132))
       ((_ to_fp 11 53) x2_ack!7133)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7133)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7133)
                       ((_ to_fp 11 53) x1_ack!7132)))
       ((_ to_fp 11 53) x1_ack!7132)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7132)
                    ((_ to_fp 11 53) x0_ack!7136))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7133)
                    ((_ to_fp 11 53) x1_ack!7132))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7134) ((_ to_fp 11 53) b_ack!7135))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7134) ((_ to_fp 11 53) x0_ack!7136))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7135) ((_ to_fp 11 53) x2_ack!7133))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7134) ((_ to_fp 11 53) b_ack!7135))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7134) ((_ to_fp 11 53) x0_ack!7136))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7134) ((_ to_fp 11 53) x1_ack!7132)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7132) ((_ to_fp 11 53) a_ack!7134))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7135) ((_ to_fp 11 53) x1_ack!7132))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!7135) ((_ to_fp 11 53) x2_ack!7133))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7133)
                    ((_ to_fp 11 53) x1_ack!7132))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
