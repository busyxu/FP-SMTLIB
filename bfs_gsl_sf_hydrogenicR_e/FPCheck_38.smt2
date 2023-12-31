(declare-fun a_ack!277 () (_ BitVec 32))
(declare-fun b_ack!274 () (_ BitVec 32))
(declare-fun c_ack!275 () (_ BitVec 64))
(declare-fun d_ack!276 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!277 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!277) b_ack!274)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule (bvadd a_ack!277 b_ack!274) #x000000aa)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             (bvadd a_ack!277 b_ack!274))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53)
            roundNearestTiesToEven
            (bvadd a_ack!277 b_ack!274))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x4000000000000000))

(check-sat)
(exit)
