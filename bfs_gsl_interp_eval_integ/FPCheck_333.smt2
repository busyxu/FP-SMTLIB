(declare-fun x1_ack!4182 () (_ BitVec 64))
(declare-fun x0_ack!4186 () (_ BitVec 64))
(declare-fun x2_ack!4183 () (_ BitVec 64))
(declare-fun b_ack!4185 () (_ BitVec 64))
(declare-fun a_ack!4184 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4186) ((_ to_fp 11 53) x1_ack!4182)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4182) ((_ to_fp 11 53) x2_ack!4183)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4182)
                       ((_ to_fp 11 53) x0_ack!4186))
               ((_ to_fp 11 53) x0_ack!4186))
       ((_ to_fp 11 53) x1_ack!4182)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4182)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4182)
                       ((_ to_fp 11 53) x0_ack!4186)))
       ((_ to_fp 11 53) x0_ack!4186)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4183)
                       ((_ to_fp 11 53) x1_ack!4182))
               ((_ to_fp 11 53) x1_ack!4182))
       ((_ to_fp 11 53) x2_ack!4183)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4183)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4183)
                       ((_ to_fp 11 53) x1_ack!4182)))
       ((_ to_fp 11 53) x1_ack!4182)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4182)
                    ((_ to_fp 11 53) x0_ack!4186))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4183)
                    ((_ to_fp 11 53) x1_ack!4182))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4184) ((_ to_fp 11 53) b_ack!4185))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4184) ((_ to_fp 11 53) x0_ack!4186))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4185) ((_ to_fp 11 53) x2_ack!4183))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4184) ((_ to_fp 11 53) b_ack!4185))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4184) ((_ to_fp 11 53) x0_ack!4186))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4184) ((_ to_fp 11 53) x1_ack!4182))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4185) ((_ to_fp 11 53) x0_ack!4186))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4185) ((_ to_fp 11 53) x1_ack!4182))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4182)
                    ((_ to_fp 11 53) x0_ack!4186))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!4184 x0_ack!4186))

(check-sat)
(exit)
