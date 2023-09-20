(declare-fun p_ack!55 () (_ BitVec 64))
(declare-fun n_ack!54 () (_ BitVec 32))
(declare-fun k_ack!53 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!55) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!55) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!54)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!55) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!55) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!55) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!55) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!54)
       ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!53)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FDIV_INVALID
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!54)
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!54)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!53)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
