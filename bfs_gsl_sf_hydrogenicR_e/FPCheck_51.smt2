(declare-fun a_ack!341 () (_ BitVec 32))
(declare-fun b_ack!338 () (_ BitVec 32))
(declare-fun c_ack!339 () (_ BitVec 64))
(declare-fun d_ack!340 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!341 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!341) b_ack!338)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!339) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!340) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule (bvadd a_ack!341 b_ack!338) #x000000aa)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             (bvadd a_ack!341 b_ack!338))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             (bvadd a_ack!341 b_ack!338))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp_unsigned 11 53)
                  roundNearestTiesToEven
                  (bvadd a_ack!341 b_ack!338))
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             (bvadd a_ack!341 b_ack!338))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FADD_UNDERFLOW
    #x3feffffffffff950
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x40852429b6c30b05)
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000))))))

(check-sat)
(exit)
