(declare-fun a_ack!3332 () (_ BitVec 32))
(declare-fun b_ack!3331 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (= #x00000000 a_ack!3332)))
(assert (= #x00000001 a_ack!3332))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3331) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3331) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3331) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!3331) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3331) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    (CF_log b_ack!3331))
            ((_ to_fp 11 53) #xc0861b2bdd7abcd2))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    (CF_log b_ack!3331))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4024000000000000)
                       ((_ to_fp 11 53) b_ack!3331))
               ((_ to_fp 11 53) #x4024000000000000))
       ((_ to_fp 11 53) b_ack!3331)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4024000000000000)
                       ((_ to_fp 11 53) b_ack!3331))
               ((_ to_fp 11 53) b_ack!3331))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!3331))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!3331))
                           #xc000000000000000)
                   a!1)))
  (FPCHECK_FADD_UNDERFLOW
    a!2
    (CF_pow (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    ((_ to_fp 11 53) b_ack!3331))
            #xc000000000000000)))))

(check-sat)
(exit)
