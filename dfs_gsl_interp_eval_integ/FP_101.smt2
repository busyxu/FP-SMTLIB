(declare-fun x1_ack!5955 () (_ BitVec 64))
(declare-fun x0_ack!5959 () (_ BitVec 64))
(declare-fun x2_ack!5956 () (_ BitVec 64))
(declare-fun b_ack!5958 () (_ BitVec 64))
(declare-fun a_ack!5957 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5959) ((_ to_fp 11 53) x1_ack!5955)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5955) ((_ to_fp 11 53) x2_ack!5956)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5955)
                       ((_ to_fp 11 53) x0_ack!5959))
               ((_ to_fp 11 53) x0_ack!5959))
       ((_ to_fp 11 53) x1_ack!5955)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5955)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5955)
                       ((_ to_fp 11 53) x0_ack!5959)))
       ((_ to_fp 11 53) x0_ack!5959)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5956)
                       ((_ to_fp 11 53) x1_ack!5955))
               ((_ to_fp 11 53) x1_ack!5955))
       ((_ to_fp 11 53) x2_ack!5956)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5956)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5956)
                       ((_ to_fp 11 53) x1_ack!5955)))
       ((_ to_fp 11 53) x1_ack!5955)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5955)
                    ((_ to_fp 11 53) x0_ack!5959))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5956)
                    ((_ to_fp 11 53) x1_ack!5955))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5957) ((_ to_fp 11 53) b_ack!5958))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5957) ((_ to_fp 11 53) x0_ack!5959))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5958) ((_ to_fp 11 53) x2_ack!5956))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5957) ((_ to_fp 11 53) b_ack!5958))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5957) ((_ to_fp 11 53) x0_ack!5959))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5957) ((_ to_fp 11 53) x1_ack!5955)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5955) ((_ to_fp 11 53) a_ack!5957))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5958) ((_ to_fp 11 53) x1_ack!5955))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!5958) ((_ to_fp 11 53) x2_ack!5956))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5956)
                    ((_ to_fp 11 53) x1_ack!5955))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
