(declare-fun a_ack!412 () (_ BitVec 64))
(declare-fun b_ack!411 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!412) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!412))
       (fp.abs ((_ to_fp 11 53) b_ack!411))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!412))
            (fp.abs ((_ to_fp 11 53) b_ack!411)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!411)))
                   ((_ to_fp 11 53) #x0010000000000000))))
  (fp.geq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!412))) a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!412))
                           (fp.abs ((_ to_fp 11 53) b_ack!411)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!412))
                           (fp.abs ((_ to_fp 11 53) b_ack!411))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!412))
                           (fp.abs ((_ to_fp 11 53) b_ack!411)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!412))
                           (fp.abs ((_ to_fp 11 53) b_ack!411))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!412))
                           (fp.abs ((_ to_fp 11 53) b_ack!411)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!412))
                           (fp.abs ((_ to_fp 11 53) b_ack!411))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3fe0000000000000
    (CF_log (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!1)))))

(check-sat)
(exit)
