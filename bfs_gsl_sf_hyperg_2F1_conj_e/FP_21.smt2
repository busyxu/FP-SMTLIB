(declare-fun c_ack!445 () (_ BitVec 64))
(declare-fun d_ack!446 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!447 () (_ BitVec 64))
(declare-fun b_ack!444 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) c_ack!445) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!446))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!445)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!445)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!446))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!447))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!444))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt ((_ to_fp 11 53) d_ack!446) ((_ to_fp 11 53) #xbfd0000000000000)))

(check-sat)
(exit)
