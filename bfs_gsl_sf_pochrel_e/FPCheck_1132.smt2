(declare-fun a_ack!3157 () (_ BitVec 64))
(declare-fun b_ack!3156 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!3156))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!3157)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3156) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!3157) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!3157) (CF_floor a_ack!3157)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3157)
                    ((_ to_fp 11 53) b_ack!3156))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3157)
                    ((_ to_fp 11 53) b_ack!3156))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3156)))
                   ((_ to_fp 11 53) #x3cc0000000000000))))
  (FPCHECK_FADD_UNDERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cc0000000000000)
            (fp.abs ((_ to_fp 11 53) b_ack!3156))))))

(check-sat)
(exit)
