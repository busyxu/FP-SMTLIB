(declare-fun a_ack!22 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    (CF_log a_ack!22))
            ((_ to_fp 11 53) #xc0861b2bdd7abcd2))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    (CF_log a_ack!22))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4024000000000000)
                       ((_ to_fp 11 53) a_ack!22))
               ((_ to_fp 11 53) #x4024000000000000))
       ((_ to_fp 11 53) a_ack!22)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4024000000000000)
                       ((_ to_fp 11 53) a_ack!22))
               ((_ to_fp 11 53) a_ack!22))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FDIV_ZERO
  (CF_pow (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4024000000000000)
                  ((_ to_fp 11 53) a_ack!22))
          #xc000000000000000)
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          ((_ to_fp 11 53) a_ack!22))))

(check-sat)
(exit)
