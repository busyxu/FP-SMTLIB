(declare-fun x1_ack!5320 () (_ BitVec 64))
(declare-fun x0_ack!5324 () (_ BitVec 64))
(declare-fun x2_ack!5321 () (_ BitVec 64))
(declare-fun b_ack!5323 () (_ BitVec 64))
(declare-fun a_ack!5322 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5324) ((_ to_fp 11 53) x1_ack!5320)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5320) ((_ to_fp 11 53) x2_ack!5321)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5320)
                       ((_ to_fp 11 53) x0_ack!5324))
               ((_ to_fp 11 53) x0_ack!5324))
       ((_ to_fp 11 53) x1_ack!5320)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5320)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5320)
                       ((_ to_fp 11 53) x0_ack!5324)))
       ((_ to_fp 11 53) x0_ack!5324)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5321)
                       ((_ to_fp 11 53) x1_ack!5320))
               ((_ to_fp 11 53) x1_ack!5320))
       ((_ to_fp 11 53) x2_ack!5321)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5321)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5321)
                       ((_ to_fp 11 53) x1_ack!5320)))
       ((_ to_fp 11 53) x1_ack!5320)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5320)
                    ((_ to_fp 11 53) x0_ack!5324))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5321)
                    ((_ to_fp 11 53) x1_ack!5320))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5322) ((_ to_fp 11 53) b_ack!5323))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5322) ((_ to_fp 11 53) x0_ack!5324))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5323) ((_ to_fp 11 53) x2_ack!5321))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5322) ((_ to_fp 11 53) b_ack!5323))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5322) ((_ to_fp 11 53) x0_ack!5324))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5322) ((_ to_fp 11 53) x1_ack!5320)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5320) ((_ to_fp 11 53) a_ack!5322))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5323) ((_ to_fp 11 53) x1_ack!5320))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5323) ((_ to_fp 11 53) x2_ack!5321)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5321)
                    ((_ to_fp 11 53) x1_ack!5320))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5322)
                       ((_ to_fp 11 53) x1_ack!5320))
               ((_ to_fp 11 53) x1_ack!5320))
       ((_ to_fp 11 53) a_ack!5322)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5322)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5322)
                       ((_ to_fp 11 53) x1_ack!5320)))
       ((_ to_fp 11 53) x1_ack!5320)))

(check-sat)
(exit)
