(declare-fun b_ack!516 () (_ BitVec 64))
(declare-fun x_ack!517 () (_ BitVec 64))
(declare-fun a_ack!515 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!517)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!516)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!517) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!517)
               ((_ to_fp 11 53) b_ack!516))
       ((_ to_fp 11 53) a_ack!515)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!515) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!517)
                    ((_ to_fp 11 53) b_ack!516))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!517)
                    ((_ to_fp 11 53) b_ack!516))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!515) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!517)
                     ((_ to_fp 11 53) b_ack!516))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!515)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!515) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!515) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!517)
                    ((_ to_fp 11 53) b_ack!516))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!515)
        (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) x_ack!517)
                ((_ to_fp 11 53) b_ack!516))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) x_ack!517)
                ((_ to_fp 11 53) b_ack!516))
        ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!515) ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!515)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) a_ack!515))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!515)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!515)))

(check-sat)
(exit)
