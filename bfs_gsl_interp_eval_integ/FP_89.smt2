(declare-fun x1_ack!4955 () (_ BitVec 64))
(declare-fun x0_ack!4959 () (_ BitVec 64))
(declare-fun x2_ack!4956 () (_ BitVec 64))
(declare-fun b_ack!4958 () (_ BitVec 64))
(declare-fun a_ack!4957 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4959) ((_ to_fp 11 53) x1_ack!4955)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4955) ((_ to_fp 11 53) x2_ack!4956)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4955)
                       ((_ to_fp 11 53) x0_ack!4959))
               ((_ to_fp 11 53) x0_ack!4959))
       ((_ to_fp 11 53) x1_ack!4955)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4955)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4955)
                       ((_ to_fp 11 53) x0_ack!4959)))
       ((_ to_fp 11 53) x0_ack!4959)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4956)
                       ((_ to_fp 11 53) x1_ack!4955))
               ((_ to_fp 11 53) x1_ack!4955))
       ((_ to_fp 11 53) x2_ack!4956)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4956)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4956)
                       ((_ to_fp 11 53) x1_ack!4955)))
       ((_ to_fp 11 53) x1_ack!4955)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4955)
                    ((_ to_fp 11 53) x0_ack!4959))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4956)
                    ((_ to_fp 11 53) x1_ack!4955))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4957) ((_ to_fp 11 53) b_ack!4958))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4957) ((_ to_fp 11 53) x0_ack!4959))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4958) ((_ to_fp 11 53) x2_ack!4956))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4957) ((_ to_fp 11 53) b_ack!4958))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4957) ((_ to_fp 11 53) x0_ack!4959))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4957) ((_ to_fp 11 53) x1_ack!4955))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4958) ((_ to_fp 11 53) x0_ack!4959))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4958) ((_ to_fp 11 53) x1_ack!4955))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4955)
                    ((_ to_fp 11 53) x0_ack!4959))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
