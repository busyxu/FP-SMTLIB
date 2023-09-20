(declare-fun a_ack!173 () (_ BitVec 64))
(declare-fun b_ack!172 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!173) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!173)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!173)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!173)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!173)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!173)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!172)
                         ((_ to_fp 11 53) b_ack!172)))
         ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
