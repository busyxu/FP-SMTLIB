(declare-fun x1_ack!4172 () (_ BitVec 64))
(declare-fun x0_ack!4176 () (_ BitVec 64))
(declare-fun x2_ack!4173 () (_ BitVec 64))
(declare-fun b_ack!4175 () (_ BitVec 64))
(declare-fun a_ack!4174 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4176) ((_ to_fp 11 53) x1_ack!4172)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4172) ((_ to_fp 11 53) x2_ack!4173)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4172)
                       ((_ to_fp 11 53) x0_ack!4176))
               ((_ to_fp 11 53) x0_ack!4176))
       ((_ to_fp 11 53) x1_ack!4172)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4172)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4172)
                       ((_ to_fp 11 53) x0_ack!4176)))
       ((_ to_fp 11 53) x0_ack!4176)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4173)
                       ((_ to_fp 11 53) x1_ack!4172))
               ((_ to_fp 11 53) x1_ack!4172))
       ((_ to_fp 11 53) x2_ack!4173)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4173)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4173)
                       ((_ to_fp 11 53) x1_ack!4172)))
       ((_ to_fp 11 53) x1_ack!4172)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4172)
                    ((_ to_fp 11 53) x0_ack!4176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4173)
                    ((_ to_fp 11 53) x1_ack!4172))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4174) ((_ to_fp 11 53) b_ack!4175))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4174) ((_ to_fp 11 53) x0_ack!4176))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4175) ((_ to_fp 11 53) x2_ack!4173))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4174) ((_ to_fp 11 53) b_ack!4175))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4174) ((_ to_fp 11 53) x0_ack!4176))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4174) ((_ to_fp 11 53) x1_ack!4172))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4175) ((_ to_fp 11 53) x0_ack!4176))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4175) ((_ to_fp 11 53) x1_ack!4172))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4172)
                    ((_ to_fp 11 53) x0_ack!4176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!4174 x0_ack!4176))

(check-sat)
(exit)
