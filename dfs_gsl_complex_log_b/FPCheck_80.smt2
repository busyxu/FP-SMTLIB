(declare-fun y1_ack!666 () (_ BitVec 64))
(declare-fun x1_ack!669 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun y2_ack!668 () (_ BitVec 64))
(declare-fun x2_ack!667 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!669))
        (fp.abs ((_ to_fp 11 53) y1_ack!666))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y1_ack!666))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x1_ack!669))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!669)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!669))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fd62e42fefa39ef)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!669)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fd62e42fefa39ef))
         (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!669))))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!669) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!667))
             (fp.abs ((_ to_fp 11 53) y2_ack!668)))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!667) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!668) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!669)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef)))
      (a!2 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y2_ack!668)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (CF_atan2 y1_ack!666 x1_ack!669)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   (CF_atan2 y2_ack!668 x2_ack!667))))))
  (FPCHECK_FMUL_UNDERFLOW a!3 #x7ff0000000000001))))

(check-sat)
(exit)
