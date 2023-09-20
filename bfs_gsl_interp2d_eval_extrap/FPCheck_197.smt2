(declare-fun x1_ack!1998 () (_ BitVec 64))
(declare-fun x0_ack!2004 () (_ BitVec 64))
(declare-fun y0_ack!1999 () (_ BitVec 64))
(declare-fun x_ack!2002 () (_ BitVec 64))
(declare-fun y_ack!2003 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!2001 () (_ BitVec 64))
(declare-fun z0_ack!2000 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2004) ((_ to_fp 11 53) x1_ack!1998))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1999) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2002) ((_ to_fp 11 53) x0_ack!2004))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2002) ((_ to_fp 11 53) x1_ack!1998)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2003) ((_ to_fp 11 53) y0_ack!1999))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2003) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1998)
                       ((_ to_fp 11 53) x0_ack!2004))
               ((_ to_fp 11 53) x0_ack!2004))
       ((_ to_fp 11 53) x1_ack!1998)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1998)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1998)
                       ((_ to_fp 11 53) x0_ack!2004)))
       ((_ to_fp 11 53) x0_ack!2004)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2003)
                       ((_ to_fp 11 53) y0_ack!1999))
               ((_ to_fp 11 53) y0_ack!1999))
       ((_ to_fp 11 53) y_ack!2003)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2003)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2003)
                       ((_ to_fp 11 53) y0_ack!1999)))
       ((_ to_fp 11 53) y0_ack!1999)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!2002)
                           ((_ to_fp 11 53) x0_ack!2004))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1998)
                           ((_ to_fp 11 53) x0_ack!2004))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2003)
                                   ((_ to_fp 11 53) y0_ack!1999))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1999))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!2000))))
  (FPCHECK_FADD_UNDERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!2001))))))

(check-sat)
(exit)
