(declare-fun a_ack!163 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!162 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!163) ((_ to_fp 11 53) #xc000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!162)
                           ((_ to_fp 11 53) b_ack!162))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!162)))))
      (a!3 (fp.abs (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!162))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3cb0000000000000))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3cc0000000000000) a!3)))))

(check-sat)
(exit)
