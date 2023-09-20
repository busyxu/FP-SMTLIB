(declare-fun x1_ack!3012 () (_ BitVec 64))
(declare-fun x0_ack!3016 () (_ BitVec 64))
(declare-fun x2_ack!3013 () (_ BitVec 64))
(declare-fun b_ack!3015 () (_ BitVec 64))
(declare-fun a_ack!3014 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3016) ((_ to_fp 11 53) x1_ack!3012)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3012) ((_ to_fp 11 53) x2_ack!3013)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3012)
                       ((_ to_fp 11 53) x0_ack!3016))
               ((_ to_fp 11 53) x0_ack!3016))
       ((_ to_fp 11 53) x1_ack!3012)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3012)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3012)
                       ((_ to_fp 11 53) x0_ack!3016)))
       ((_ to_fp 11 53) x0_ack!3016)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3013)
                       ((_ to_fp 11 53) x1_ack!3012))
               ((_ to_fp 11 53) x1_ack!3012))
       ((_ to_fp 11 53) x2_ack!3013)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3013)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3013)
                       ((_ to_fp 11 53) x1_ack!3012)))
       ((_ to_fp 11 53) x1_ack!3012)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3012)
                    ((_ to_fp 11 53) x0_ack!3016))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3013)
                    ((_ to_fp 11 53) x1_ack!3012))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3014) ((_ to_fp 11 53) b_ack!3015))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3014) ((_ to_fp 11 53) x0_ack!3016))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3015) ((_ to_fp 11 53) x2_ack!3013))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3014) ((_ to_fp 11 53) b_ack!3015))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3014) ((_ to_fp 11 53) x0_ack!3016))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3014) ((_ to_fp 11 53) x1_ack!3012)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3012) ((_ to_fp 11 53) a_ack!3014))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3015) ((_ to_fp 11 53) x1_ack!3012))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3015) ((_ to_fp 11 53) x2_ack!3013))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3013)
                    ((_ to_fp 11 53) x1_ack!3012))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3014)
          ((_ to_fp 11 53) x1_ack!3012))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3014)
          ((_ to_fp 11 53) x1_ack!3012))))

(check-sat)
(exit)
