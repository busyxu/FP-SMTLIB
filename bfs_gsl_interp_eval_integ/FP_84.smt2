(declare-fun x1_ack!4473 () (_ BitVec 64))
(declare-fun x0_ack!4477 () (_ BitVec 64))
(declare-fun x2_ack!4474 () (_ BitVec 64))
(declare-fun b_ack!4476 () (_ BitVec 64))
(declare-fun a_ack!4475 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4477) ((_ to_fp 11 53) x1_ack!4473)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4473) ((_ to_fp 11 53) x2_ack!4474)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4473)
                       ((_ to_fp 11 53) x0_ack!4477))
               ((_ to_fp 11 53) x0_ack!4477))
       ((_ to_fp 11 53) x1_ack!4473)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4473)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4473)
                       ((_ to_fp 11 53) x0_ack!4477)))
       ((_ to_fp 11 53) x0_ack!4477)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4474)
                       ((_ to_fp 11 53) x1_ack!4473))
               ((_ to_fp 11 53) x1_ack!4473))
       ((_ to_fp 11 53) x2_ack!4474)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4474)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4474)
                       ((_ to_fp 11 53) x1_ack!4473)))
       ((_ to_fp 11 53) x1_ack!4473)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4473)
                    ((_ to_fp 11 53) x0_ack!4477))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4474)
                    ((_ to_fp 11 53) x1_ack!4473))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4475) ((_ to_fp 11 53) b_ack!4476))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4475) ((_ to_fp 11 53) x0_ack!4477))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4476) ((_ to_fp 11 53) x2_ack!4474))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4475) ((_ to_fp 11 53) b_ack!4476))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4475) ((_ to_fp 11 53) x0_ack!4477))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4475) ((_ to_fp 11 53) x1_ack!4473))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4476) ((_ to_fp 11 53) x0_ack!4477))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4476) ((_ to_fp 11 53) x1_ack!4473))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4473)
                    ((_ to_fp 11 53) x0_ack!4477))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
