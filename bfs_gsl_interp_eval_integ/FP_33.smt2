(declare-fun x1_ack!957 () (_ BitVec 64))
(declare-fun x0_ack!961 () (_ BitVec 64))
(declare-fun x2_ack!958 () (_ BitVec 64))
(declare-fun b_ack!960 () (_ BitVec 64))
(declare-fun a_ack!959 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!961) ((_ to_fp 11 53) x1_ack!957)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!957) ((_ to_fp 11 53) x2_ack!958)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!957)
                       ((_ to_fp 11 53) x0_ack!961))
               ((_ to_fp 11 53) x0_ack!961))
       ((_ to_fp 11 53) x1_ack!957)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!957)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!957)
                       ((_ to_fp 11 53) x0_ack!961)))
       ((_ to_fp 11 53) x0_ack!961)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!958)
                       ((_ to_fp 11 53) x1_ack!957))
               ((_ to_fp 11 53) x1_ack!957))
       ((_ to_fp 11 53) x2_ack!958)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!958)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!958)
                       ((_ to_fp 11 53) x1_ack!957)))
       ((_ to_fp 11 53) x1_ack!957)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!957)
                    ((_ to_fp 11 53) x0_ack!961))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!958)
                    ((_ to_fp 11 53) x1_ack!957))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!959) ((_ to_fp 11 53) b_ack!960))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!959) ((_ to_fp 11 53) x0_ack!961))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!960) ((_ to_fp 11 53) x2_ack!958))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!959) ((_ to_fp 11 53) b_ack!960))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!959) ((_ to_fp 11 53) x0_ack!961))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!959) ((_ to_fp 11 53) x1_ack!957))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!960) ((_ to_fp 11 53) x0_ack!961)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!957)
                    ((_ to_fp 11 53) x0_ack!961))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
