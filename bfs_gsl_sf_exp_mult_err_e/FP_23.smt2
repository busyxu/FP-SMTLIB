(declare-fun c_ack!452 () (_ BitVec 64))
(declare-fun a_ack!453 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!452) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!453) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!453)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!452))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!453)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!452))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))

(check-sat)
(exit)
