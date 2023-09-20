(declare-fun a_ack!2149 () (_ BitVec 64))
(declare-fun b_ack!2148 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2149) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2149)
                     ((_ to_fp 11 53) b_ack!2148))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2148) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2148))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!2149)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2149) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!2148))
                          ((_ to_fp 11 53) #x3fe62e42fefa39ef))
                  ((_ to_fp 11 53) #x3fb999999999999a))))
  (not a!1)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!2148))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!2149))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2149) ((_ to_fp 11 53) #x402e000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2148) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2149) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2149) ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4026000000000000)
                       ((_ to_fp 11 53) a_ack!2149))
               ((_ to_fp 11 53) a_ack!2149))
       ((_ to_fp 11 53) #x4026000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x4026000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4026000000000000)
                       ((_ to_fp 11 53) a_ack!2149)))
       ((_ to_fp 11 53) a_ack!2149)))

(check-sat)
(exit)
