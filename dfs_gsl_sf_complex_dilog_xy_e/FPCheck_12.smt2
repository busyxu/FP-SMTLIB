(declare-fun b_ack!34 () (_ BitVec 64))
(declare-fun a_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!35))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!35)
                       ((_ to_fp 11 53) a_ack!35))
               ((_ to_fp 11 53) a_ack!35))
       ((_ to_fp 11 53) a_ack!35)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!35))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!35)
                       ((_ to_fp 11 53) a_ack!35))
               ((_ to_fp 11 53) a_ack!35))
       ((_ to_fp 11 53) a_ack!35)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!35)
          ((_ to_fp 11 53) a_ack!35))
  #x3fd0000000000000))

(check-sat)
(exit)
