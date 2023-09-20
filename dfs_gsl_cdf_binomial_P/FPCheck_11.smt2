(declare-fun p_ack!47 () (_ BitVec 64))
(declare-fun k_ack!45 () (_ BitVec 32))
(declare-fun n_ack!46 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!47) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!47) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!46 k_ack!45)))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!47) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!47) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!47) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!47) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!46)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!46)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!46)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!46)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!46)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45)))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!46)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45)))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!46)
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    k_ack!45))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!46)
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    k_ack!45)))
                  ((_ to_fp 11 53) #x3fc999999999999a))))
  (not a!1)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45)
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!46)
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!45))))

(check-sat)
(exit)
