(declare-fun x1_ack!4042 () (_ BitVec 64))
(declare-fun x0_ack!4046 () (_ BitVec 64))
(declare-fun x2_ack!4043 () (_ BitVec 64))
(declare-fun b_ack!4045 () (_ BitVec 64))
(declare-fun a_ack!4044 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4046) ((_ to_fp 11 53) x1_ack!4042)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4042) ((_ to_fp 11 53) x2_ack!4043)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4042)
                       ((_ to_fp 11 53) x0_ack!4046))
               ((_ to_fp 11 53) x0_ack!4046))
       ((_ to_fp 11 53) x1_ack!4042)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4042)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4042)
                       ((_ to_fp 11 53) x0_ack!4046)))
       ((_ to_fp 11 53) x0_ack!4046)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4043)
                       ((_ to_fp 11 53) x1_ack!4042))
               ((_ to_fp 11 53) x1_ack!4042))
       ((_ to_fp 11 53) x2_ack!4043)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4043)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4043)
                       ((_ to_fp 11 53) x1_ack!4042)))
       ((_ to_fp 11 53) x1_ack!4042)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4042)
                    ((_ to_fp 11 53) x0_ack!4046))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4043)
                    ((_ to_fp 11 53) x1_ack!4042))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4044) ((_ to_fp 11 53) b_ack!4045))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4044) ((_ to_fp 11 53) x0_ack!4046))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4045) ((_ to_fp 11 53) x2_ack!4043))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4044) ((_ to_fp 11 53) b_ack!4045))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4044) ((_ to_fp 11 53) x0_ack!4046))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4044) ((_ to_fp 11 53) x1_ack!4042))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4045) ((_ to_fp 11 53) x0_ack!4046))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4045) ((_ to_fp 11 53) x1_ack!4042))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4042)
                    ((_ to_fp 11 53) x0_ack!4046))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
