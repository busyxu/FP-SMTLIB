(declare-fun p_ack!703 () (_ BitVec 64))
(declare-fun n_ack!702 () (_ BitVec 32))
(declare-fun k_ack!701 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!703) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!703) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!703) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!703) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!703) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!703) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!701)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.eq ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!701)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!701)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!701)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!701)
                    ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
       (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!701)
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp_unsigned 11 53)
                         roundNearestTiesToEven
                         k_ack!701)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
            ((_ to_fp 11 53) #x40c0000000000000))))
(assert (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)
       ((_ to_fp 11 53) #x4330000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!702))
                          ((_ to_fp_unsigned 11 53)
                            roundNearestTiesToEven
                            n_ack!702))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!702)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp_unsigned 11 53)
                         roundNearestTiesToEven
                         n_ack!702)))
       ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!702))
  #x4028000000000000))

(check-sat)
(exit)
