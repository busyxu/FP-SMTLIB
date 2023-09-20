(declare-fun limit_ack!1987 () (_ BitVec 64))
(declare-fun epsabs_ack!1992 () (_ BitVec 64))
(declare-fun a_ack!1993 () (_ BitVec 64))
(declare-fun x1_ack!1988 () (_ BitVec 64))
(declare-fun x2_ack!1989 () (_ BitVec 64))
(declare-fun x3_ack!1990 () (_ BitVec 64))
(declare-fun b_ack!1991 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1987)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1992)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1988) ((_ to_fp 11 53) a_ack!1993))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1989) ((_ to_fp 11 53) x1_ack!1988))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1990) ((_ to_fp 11 53) x2_ack!1989))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1991) ((_ to_fp 11 53) x3_ack!1990))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1993)
                                   ((_ to_fp 11 53) x1_ack!1988))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1993)
                           ((_ to_fp 11 53) x1_ack!1988))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1988)
                                   ((_ to_fp 11 53) a_ack!1993)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FADD_ACCURACY (fp.abs a!3) (fp.abs a!4)))))

(check-sat)
(exit)
