(declare-fun a_ack!56 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!56)) ((_ to_fp 11 53) #x4190000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!56)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!56))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fe62e42fefa39ef)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!56)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fe62e42fefa39ef))
         (CF_log (fp.abs ((_ to_fp 11 53) a_ack!56))))))

(check-sat)
(exit)
