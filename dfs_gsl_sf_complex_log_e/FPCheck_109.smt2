(declare-fun a_ack!304 () (_ BitVec 64))
(declare-fun b_ack!303 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!304) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!304))
       (fp.abs ((_ to_fp 11 53) b_ack!303))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!304))
            (fp.abs ((_ to_fp 11 53) b_ack!303)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!303)))
                   ((_ to_fp 11 53) #x0010000000000000))))
  (fp.geq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!304))) a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!304))
                           (fp.abs ((_ to_fp 11 53) b_ack!303)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!304))
                           (fp.abs ((_ to_fp 11 53) b_ack!303))))))
  (FPCHECK_FADD_OVERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
