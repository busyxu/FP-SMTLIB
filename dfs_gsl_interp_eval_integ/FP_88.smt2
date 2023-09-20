(declare-fun x1_ack!5000 () (_ BitVec 64))
(declare-fun x0_ack!5004 () (_ BitVec 64))
(declare-fun x2_ack!5001 () (_ BitVec 64))
(declare-fun b_ack!5003 () (_ BitVec 64))
(declare-fun a_ack!5002 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5004) ((_ to_fp 11 53) x1_ack!5000)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5000) ((_ to_fp 11 53) x2_ack!5001)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5000)
                       ((_ to_fp 11 53) x0_ack!5004))
               ((_ to_fp 11 53) x0_ack!5004))
       ((_ to_fp 11 53) x1_ack!5000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5000)
                       ((_ to_fp 11 53) x0_ack!5004)))
       ((_ to_fp 11 53) x0_ack!5004)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5001)
                       ((_ to_fp 11 53) x1_ack!5000))
               ((_ to_fp 11 53) x1_ack!5000))
       ((_ to_fp 11 53) x2_ack!5001)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5001)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5001)
                       ((_ to_fp 11 53) x1_ack!5000)))
       ((_ to_fp 11 53) x1_ack!5000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5000)
                    ((_ to_fp 11 53) x0_ack!5004))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5001)
                    ((_ to_fp 11 53) x1_ack!5000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5002) ((_ to_fp 11 53) b_ack!5003))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5002) ((_ to_fp 11 53) x0_ack!5004))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5003) ((_ to_fp 11 53) x2_ack!5001))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5002) ((_ to_fp 11 53) b_ack!5003))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5002) ((_ to_fp 11 53) x0_ack!5004))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5002) ((_ to_fp 11 53) x1_ack!5000)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5000) ((_ to_fp 11 53) a_ack!5002))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5003) ((_ to_fp 11 53) x1_ack!5000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5003) ((_ to_fp 11 53) x2_ack!5001)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5001)
                    ((_ to_fp 11 53) x1_ack!5000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5002)
                       ((_ to_fp 11 53) x1_ack!5000))
               ((_ to_fp 11 53) x1_ack!5000))
       ((_ to_fp 11 53) a_ack!5002)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5002)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5002)
                       ((_ to_fp 11 53) x1_ack!5000)))
       ((_ to_fp 11 53) x1_ack!5000)))

(check-sat)
(exit)
