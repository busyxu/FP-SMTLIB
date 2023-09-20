(declare-fun a_ack!43 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!43))
            ((_ to_fp 11 53) #x408f400000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!43))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!43)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!43))
                           (fp.abs ((_ to_fp 11 53) a_ack!43)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!43))
                           (fp.abs ((_ to_fp 11 53) a_ack!43))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.div roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.div roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!2))))

(check-sat)
(exit)
