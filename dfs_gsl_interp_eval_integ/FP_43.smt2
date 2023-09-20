(declare-fun x1_ack!2012 () (_ BitVec 64))
(declare-fun x0_ack!2016 () (_ BitVec 64))
(declare-fun x2_ack!2013 () (_ BitVec 64))
(declare-fun b_ack!2015 () (_ BitVec 64))
(declare-fun a_ack!2014 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2016) ((_ to_fp 11 53) x1_ack!2012)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2012) ((_ to_fp 11 53) x2_ack!2013)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2012)
                       ((_ to_fp 11 53) x0_ack!2016))
               ((_ to_fp 11 53) x0_ack!2016))
       ((_ to_fp 11 53) x1_ack!2012)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2012)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2012)
                       ((_ to_fp 11 53) x0_ack!2016)))
       ((_ to_fp 11 53) x0_ack!2016)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2013)
                       ((_ to_fp 11 53) x1_ack!2012))
               ((_ to_fp 11 53) x1_ack!2012))
       ((_ to_fp 11 53) x2_ack!2013)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2013)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2013)
                       ((_ to_fp 11 53) x1_ack!2012)))
       ((_ to_fp 11 53) x1_ack!2012)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2012)
                    ((_ to_fp 11 53) x0_ack!2016))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2013)
                    ((_ to_fp 11 53) x1_ack!2012))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2014) ((_ to_fp 11 53) b_ack!2015))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2014) ((_ to_fp 11 53) x0_ack!2016))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2015) ((_ to_fp 11 53) x2_ack!2013))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2014) ((_ to_fp 11 53) b_ack!2015))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2014) ((_ to_fp 11 53) x0_ack!2016))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2014) ((_ to_fp 11 53) x1_ack!2012))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2015) ((_ to_fp 11 53) x0_ack!2016))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2015) ((_ to_fp 11 53) x1_ack!2012)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2012) ((_ to_fp 11 53) b_ack!2015))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2012)
                    ((_ to_fp 11 53) x0_ack!2016))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2013)
                    ((_ to_fp 11 53) x1_ack!2012))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
