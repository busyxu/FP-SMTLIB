(declare-fun x1_ack!4012 () (_ BitVec 64))
(declare-fun x0_ack!4016 () (_ BitVec 64))
(declare-fun x2_ack!4013 () (_ BitVec 64))
(declare-fun b_ack!4015 () (_ BitVec 64))
(declare-fun a_ack!4014 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4016) ((_ to_fp 11 53) x1_ack!4012)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4012) ((_ to_fp 11 53) x2_ack!4013)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4012)
                       ((_ to_fp 11 53) x0_ack!4016))
               ((_ to_fp 11 53) x0_ack!4016))
       ((_ to_fp 11 53) x1_ack!4012)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4012)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4012)
                       ((_ to_fp 11 53) x0_ack!4016)))
       ((_ to_fp 11 53) x0_ack!4016)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4013)
                       ((_ to_fp 11 53) x1_ack!4012))
               ((_ to_fp 11 53) x1_ack!4012))
       ((_ to_fp 11 53) x2_ack!4013)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4013)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4013)
                       ((_ to_fp 11 53) x1_ack!4012)))
       ((_ to_fp 11 53) x1_ack!4012)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4012)
                    ((_ to_fp 11 53) x0_ack!4016))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4013)
                    ((_ to_fp 11 53) x1_ack!4012))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4014) ((_ to_fp 11 53) b_ack!4015))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4014) ((_ to_fp 11 53) x0_ack!4016))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4015) ((_ to_fp 11 53) x2_ack!4013))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4014) ((_ to_fp 11 53) b_ack!4015))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4014) ((_ to_fp 11 53) x0_ack!4016))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4014) ((_ to_fp 11 53) x1_ack!4012))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4015) ((_ to_fp 11 53) x0_ack!4016))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4015) ((_ to_fp 11 53) x1_ack!4012))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4012)
                    ((_ to_fp 11 53) x0_ack!4016))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
