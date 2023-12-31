(declare-fun x_ack!1034 () (_ BitVec 64))
(declare-fun nu1_ack!1032 () (_ BitVec 64))
(declare-fun nu2_ack!1033 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!1034) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1034) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1034) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1034) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!1032) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!1033) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!1032) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!1032) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!1033) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!1032) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!1033) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!1032) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!1033) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!1032) ((_ to_fp 11 53) nu2_ack!1033))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!1032) ((_ to_fp 11 53) nu2_ack!1033)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!1032)
               ((_ to_fp 11 53) nu2_ack!1033))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) nu1_ack!1032)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!1032) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!1032) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!1032) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!1032) ((_ to_fp 11 53) #x40c0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) nu1_ack!1032)
                  ((_ to_fp 11 53) nu1_ack!1032)))
  #xbf9e4286cb0f5398))

(check-sat)
(exit)
